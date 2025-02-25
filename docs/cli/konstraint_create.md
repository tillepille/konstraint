## konstraint create

Create Gatekeeper constraints from Rego policies

```
konstraint create <dir> [flags]
```

### Examples

```
Create constraints in the same directories as the policies
	konstraint create examples

Save the constraints in a specific directory
	konstraint create examples --output generated-constraints

Create constraints with the Gatekeeper enforcement action set to dryrun
	konstraint create examples --dryrun
```

### Options

```
  -d, --dryrun                Sets the enforcement action of the constraints to dryrun, overriding the @enforcement tag
  -h, --help                  help for create
  -o, --output string         Specify an output directory for the Gatekeeper resources
      --partial-constriants   Generate partial Constraints for policies with parameters
      --skip-constraints      Skip generation of constraints
```

### SEE ALSO

* [konstraint](konstraint.md)	 - Konstraint

