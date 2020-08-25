# operator-package-manager

A container image wrapping opm (operator package manager)

## Usage

This image is put together so that `opm` can be used in a CI environment, 
so that pipeline steps relating to Kubernetes Operators can be automated. 
 
Such tasks could be 
[building Operator Bundle images](https://github.com/operator-framework/operator-registry/blob/master/docs/design/operator-bundle.md#operator-bundle-overview) and 
[index images](https://github.com/operator-framework/operator-registry#building-an-index-of-operators-using-opm). 

It is also helpful if you want to run `opm` on your laptop, in a container.
