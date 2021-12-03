package test

import (
	"fmt"
	"testing"

	"github.com/gruntwork-io/terratest/modules/random"
	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestNwsSshKeypairExample(t *testing.T) {
	t.Parallel()

	exp_name := fmt.Sprintf("test-sshkey-%s", random.UniqueId())

	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "../examples/basic",
		// Variables to pass to our Terraform code using -var options
		Vars: map[string]interface{}{
			"name": exp_name,
		},
	})

	defer terraform.Destroy(t, terraformOptions)

	terraform.InitAndApply(t, terraformOptions)

	act_name := terraform.Output(t, terraformOptions, "id")
	fingerprint := terraform.Output(t, terraformOptions, "fingerprint")

	assert.Equal(t, exp_name, act_name)
	assert.NotEmpty(t, fingerprint)
	assert.NotNil(t, fingerprint)
}
