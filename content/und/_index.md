---
title: "noScribe"
description: "Choose your language"
translationKey: "landing"
robots: "noindex,follow"
hideLanguageSwitcher: true
bookToC: false
---

# Choose your language

{{< button href="/en/" >}}English{{< /button >}}
{{< button href="/de/" >}}Deutsch{{< /button >}}
{{< button href="/fr/" >}}Français{{< /button >}}
{{< button href="/es/" >}}Español{{< /button >}}

Your browser language is used for an automatic redirect. 
You can change language on every page later.

<noscript>
  JavaScript is disabled; please choose a language above.
</noscript>
 
<script>
  (function () {
    if (window.location.pathname !== "/") return;

    // Add new languages by extending this map.
    var languagePaths = {
      en: "/en/",
      de: "/de/",
      fr: "/fr/",
      es: "/es/"
    };
    var fallback = "/en/";

    var preferred = (navigator.languages && navigator.languages.length)
      ? navigator.languages
      : [navigator.language || ""];

    var target = null;
    for (var i = 0; i < preferred.length; i++) {
      var lang = String(preferred[i] || "").toLowerCase();
      if (!lang) continue;
      if (languagePaths[lang]) {
        target = languagePaths[lang];
        break;
      }
      var base = lang.split("-")[0];
      if (languagePaths[base]) {
        target = languagePaths[base];
        break;
      }
    }

    if (!target) target = fallback;
    if (target && target !== window.location.pathname) {
      window.location.replace(target);
    }
  })();
</script>
