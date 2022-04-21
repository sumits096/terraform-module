terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = {
    "type" : "service_account",
    "project_id" : "studied-client-346013",
    "private_key_id" : "1bd5b304e6b1d8827f821d695239caf447e20a02",
    "private_key" : "-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCWK1RHpZhyAPmR\nQekhKAxarDbcPfAQ/2fzTsFImVq4GRpVSJL67WuWE1D2h4hrTg8qKqI8NjPc4wO5\nNfDpuS23fF9/FmhoOoVkpN3CwObjRgJcCyCB2bkBB6RxonWEfKZ0i3rVW3wTOrBY\nfs7RJStNnUbfzfH8gw7BE8pyTEj2za64AB6EKQQiiwJFt+zdyuVHtOEKoGq6MItN\n6GXUhU5Vh4vECa9t9YqOl+PkzGdqZX87E7cg/1LS5OtZpcnoh6DK+VplNS4SJbbi\n38dPqDBDYtL/FK/qKIrnxOudGXPWunSAYhbjzVXggZST+3kB+lotBDNV0UI0/DsW\nNYeWKMk9AgMBAAECggEAKxjfVLqdMCbAeSQx3H6qYQFoszehZLdwJV9WUFgWtZwa\ntxwfdp1Z0ZXUmBQYnjcmWgMnUWF66+tI/8gPznwDN1Qd8hLDvxoAe3xnWoPTH6nR\ndooI98s88aM4WhZ2ZKIDgZIgHAhn6Prgbl1iTJq+vUUkeImZ587TFq1v3fKvxAie\nD25i/g3M1LiwG0j3VH6Y3FEXgkNyvQ7/36OFAzyzoKnK9sGOs4r1BX4omKkX5HSP\n34TgTkh+Ygi0i9eYFCxZpaXHbLQ0ZNgSudgMtlM5pz/k9Q4LIolcaoAMg/mCK17W\nRQP5vastZ0aP2SHs12T6OBNXXkbA9lUi/OJ9SN5KjwKBgQDFG/Mf7hrMZeNJf1jk\n+KoOBakjDe9o1LdJ8gzTzqwrbynnSd9y8I1kQdAImdd92LPa1lJUxo+xMOZUtOw3\nmtcs3f3fJm+WzbEToG/hkhNNDPGfJEnoc9UiaRrYotDLZp5sfdVGihTqcO5IpGRo\nUMlVMkMzcIzIwJoNRT28QNsstwKBgQDDCSSAYVRxzrI0WSuUh6SdzsTvGNiZ9Pdl\nGxr+tzqZSf3asgfO5NAwsUfoDHP4F1ws0G80Q8NZfO5PCvfCuHJzcwlrADiponWj\nHiPVE2Rkb0DY3d/9Nd8hlYR5UUVClSh/N0gyr+DXzKWfOZaytGtzCUheA1wEmqmo\nrKsG1AhtqwKBgAa5mWXxfcCTiVmsmp/VTBgGYWrswspU15wSQhXH61/f/xIBFzqY\nsnpFNI/Wj9+fUSOaRFzYGXb2MCWbtqN/CPBi8pJ2gUAn7G66/pY3oajzVBsV5d+k\ndBUkeOIDTBRkf+s7r9ckRupox/h6g2J7vyLFAD31DRicWaUyQ5T0sYWpAoGAZYx+\nF+YVfMg9WypOmaBiotQFD+Tk6ox0v4z0aklm1meDKHpnvF7A04mKwhSx0SwAj0jb\njd/2d8Knpjo0tIsq9FeiQLc1yYVQMOVBjPDy5aRTpFcqCAIjsq3R8wTQxhE5q7tR\n+SpALLxeQ+BNSbDM/XGI34JqR+9rhOqahgyics8CgYB1qSVg0bSN7XocFGK+BWUC\n7v6wlyTpV9awOe0uq2vvhr27YgmH9Jbk5Kwac2puhifh1Zf8JG899hsok+JvVvw+\n/8vugGob0mkqNS4EsgvjxcD5LfNnfi98kzBVGDtDUFh3nP+Fi3HicPnmLr/9HOtf\nWsCesIlfo0t/0EeVzIprWQ==\n-----END PRIVATE KEY-----\n",
    "client_email" : "23130737730-compute@developer.gserviceaccount.com",
    "client_id" : "101841037554451363052",
    "auth_uri" : "https://accounts.google.com/o/oauth2/auth",
    "token_uri" : "https://oauth2.googleapis.com/token",
    "auth_provider_x509_cert_url" : "https://www.googleapis.com/oauth2/v1/certs",
    "client_x509_cert_url" : "https://www.googleapis.com/robot/v1/metadata/x509/23130737730-compute%40developer.gserviceaccount.com"
  }
  project = var.project_name
  region  = var.region
  zone    = var.zone
}
