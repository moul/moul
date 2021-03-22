## Greetings from France 🇫🇷👋

<img align="right" src="https://raw.githubusercontent.com/moul/moul/master/contribute.gif">

:hammer: Founder of [Berty](https://github.com/berty)<br/>
:heart: P2P, Cryptography, POCs, CLIs<br/>
:computer: Providing consultancy services for VCs and startups<br/> <!-- FIXME: link to PMG -->
:construction: I maintain a lot of OSS repos<br/>
:octocat: Coding everyday :)<br/>

#### 🌱 My latest projects

{{range recentRepos 10}}
- [{{.Name}}]({{.URL}}) - {{.Description}}
{{- end}}

#### 🔭 Recent Releases I Worked On

{{range recentReleases 10}}
{{- if not (or (eq .Name "moul/skip") (eq .Name "moul/another-skip")) -}}
- [{{.Name}}]({{.URL}}) ([{{.LastRelease.TagName}}]({{.LastRelease.URL}}), {{humanize .LastRelease.PublishedAt}}) - {{.Description}}
{{ end -}}
{{- end}}

#### ❤️ These awesome people sponsor me (thank you!)

{{range sponsors 5}}
- [{{.User.Login}}]({{.User.URL}}) ({{humanize .CreatedAt}})
{{- end}}

For more information, see [the sponsors page](https://github.com/sponsors/moul/).

<details>
  <h4>👷 Check out what I'm currently working on</h4>
  <ul>
  {{range recentContributions 10}}
  <li><a href="{{.Repo.URL}}">{{.Repo.Name}}</a> - {{.Repo.Description}} ({{humanize .OccurredAt}})</li>
  {{- end}}
  </ul>

  <h4>🚧 Things I did recently</h4>
  <ul>
  {{range rss "https://makerinbox.com/provider-user/wipchat-user-1780/feed.xml" 5}}
  <li><a href="{{.URL}}">{{.Title}}</a> ({{humanize .PublishedAt}})</li>
  {{- end}}
  </ul>

  <h4>📜 Recent blog posts</h4>
  <ul>
  {{range rss "https://manfred.life/blog/index.xml" 5}}
  <li><a href="{{.URL}}">{{.Title}}</a> ({{humanize .PublishedAt}})</li>
  {{- end}}
  </ul>

  <h4>📓 Gists I wrote</h4>
  <ul>
  {{range gists 7}}
  {{- if .Description -}}
  <li><a href="{{.URL}}">{{.Description}}</a> ({{humanize .CreatedAt}})</li>
  {{ end }}
  {{- end}}
  </ul>

  <h4>👯 Check out some of my recent followers</h4>
  <ul>
  {{range followers 5}}
  <li><a href="{{.URL}}">{{.Login}}</a>
  {{- end}}
  </ul>

  <h4>💬 Feedback</h4>

  <p>
    If you use one of my projects, I'd love to hear from you!
    Don't be shy and let me know what you liked and what needs being improved.
    Got an issue? Open a ticket, I don't bite and will try my best to help!
  </p>

  <h4>📫 How to reach me</h4>
  <ul>
    <li>Twitter: <a href="https://twitter.com/moul">https://twitter.com/moul</a></li>
    <li>Blog: <a href="https://manfred.life/">https://manfred.life/</a></li>
  </ul>

  <hr />

  <summary>Details</summary>
  <img src="https://img.shields.io/badge/📦%20%20release-experimental-blue"/>
  <img src="https://img.shields.io/badge/coverage-@moul%20is%20unstable-red?logo=codecov"/>
  <img src="https://img.shields.io/badge/👤%20%20mood-👍%20👍%20👍-black"/>
  <img src="https://img.shields.io/badge/🌐%20%20country-France%20🇫🇷-pink"/>
  <!--<img src="https://img.shields.io/badge/cool-yep-magenta"/>-->

  <hr />

  <img src="https://github-readme-stats.vercel.app/api?username=moul&count_private=true&show_icons=true"/>

 <details><summary>Click!</summary> <details><summary>Click!</summary> <details><summary>Click!</summary> <details><summary>Click!</summary> <details><summary>Click!</summary> <details><summary>Click!</summary> <details><summary>Click!</summary> <details><summary>Click!</summary> <details><summary>Click!</summary> <details><summary>Click!</summary> <details><summary>Click!</summary> <details><summary>Click!</summary> <details><summary>Click!</summary> <details><summary>Click!</summary> <details><summary>Click!</summary> <details><summary>Click!</summary> <details><summary>Click!</summary> <details><summary>Click!</summary> <details><summary>Click!</summary> <details><summary>Click!</summary> <details><summary>Click!</summary> <details><summary>Click!</summary> Thank you 😎 </details> </details> </details> </details> </details> </details> </details> </details> </details> </details> </details> </details> </details> </details> </details> </details> </details> </details> </details> </details> </details> </details>
</details>
