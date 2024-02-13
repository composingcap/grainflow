from conans import ConanFile, tools

class MinAPI(ConanFile):
    name = "min-api"
    license = "MIT"
    url = "https://github.com/Cycling74/min-api"
    description = "Support files for compiling a MAX external object written in C++ using a high-level declarative application programming interface"

    def set_version(self):
        git = tools.Git(folder=self.recipe_folder)
        tag = git.get_tag()
        if tag:
            self.version = tag.replace("/", "_")
        else:
            self.version = ("%s_%s" % (git.get_branch().replace("/", "_"), git.get_revision()))[:51]

    def package_id(self):
        self.info.header_only()

    def export_sources(self):
        self.copy("**", excludes=["*.js", "*.html", "examples/**"])

    def package(self):
        self.copy("**")
