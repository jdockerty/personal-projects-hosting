resource "digitalocean_app" "blog" {
  spec {
    name   = "blog"
    region = "lon"

    # Still need to use a CNAME record from the given DO app link :(
    domain {
        name = "blog.jdocklabs.co.uk"
        type = "PRIMARY"
    }

    static_site {
      name          = "personal-blog"
      source_dir    = "blog/"
      build_command = "rm -r ./public; hugo --destination ./public"
      output_dir    = "public"

      github {
        repo   = "jdockerty/blog"
        branch = "main"
        deploy_on_push = true
      }
    }
  }
}