# Custom Cache Example (in Rails 2.3)

## Usage

    script/server

Example path running in browser:

    http://localhost:3000/feed/x/y/z

This will write cached content to publc/x_y_z.html.  Any subsequent request will read the cached version and add a bit of text alerting the fact it is cached (for test purposes only).

