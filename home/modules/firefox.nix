{ ... }:

{
  programs.firefox = {
    languagePacks = [
      "en-US"
      "de"
    ];
    policies = {
      AutofillAddressEnabled = false;
      AutofillCreditCardEnabled = false;
      CaptivePortal = false;
      DisableFirefoxAccounts = true;
      DisableFirefoxScreenshots = true;
      DisableFirefoxStudies = true;
      DisableFormHistory = true;
      DisablePasswordReveal = true;
      DisablePocket = true;
      DisableSecurityBypass = {
        InvalidCertificate = false;
        SafeBrowsing = false;
      };
      DisableTelemetry = true;
      DisableThirdPartyModuleBlocking = false;
      DNSOverHTTPS = {
        Enabled = true;
        Locked = true;
      };
      DontCheckDefaultBrowser = true;
      EnableTrackingProtection = {
        Value = true;
        Locked = true;
        Cryptomining = true;
        Fingerprinting = true;
        EmailTracking = true;
        SuspectedFingerprinting = true;
        #Category = "strict";
        BaselineExceptions = false;
        ConvenienceExceptions = false;
      };
      EncryptedMediaExtensions = {
        Enabled = false;
      };
      FirefoxSuggest = {
        WebSuggestions = false;
        SponsoredSuggestions = false;
        ImproveSuggest = false;
        Locked = true;
      };
      GenerativeAI = {
        Enabled = false;
        Locked = true;
      };
      HttpsOnlyMode = "force_enabled";
      MicrosoftEntraSSO = false;
      NetworkPrediction = false;
      NoDefaultBookmarks = true;
      OfferToSaveLogins = false;
      PasswordManagerEnabled = false;
      Permissions = {
        Camera = {
          BlockNewRequests = true;
          Locked = true;
        };
        Microphone = {
          BlockNewRequests = true;
          Locked = true;
        };
        Location = {
          BlockNewRequests = true;
          Locked = true;
        };
        Notification = {
          BlockNewRequests = true;
          Locked = true;
        };
        Autoplay = {
          Default = "block-audio-video";
          Locked = true;
        };
        VirtualReality = {
          BlockNewRequests = true;
          Locked = true;
        };
        Screenshare = {
          BlockNewRequests = true;
          Locked = true;
        };
      };
      PictureInPicture = {
        Enabled = false;
        Locked = true;
      };
      PopupBlocking = {
        Default = true;
        Locked = true;
      };
      PostQuantumKeyAgreementEnabled = true;
      PromptForDownloadLocation = true;
      RequestedLocales = [
        "en-US"
        "de"
      ];
      SanitizeOnShutdown = {
        Cache = true;
        FormData = true;

        Cookies = false;
        History = false;
        Sessions = false;
        SiteSettings = false;
        Locked = true;
      };
      SearchEngines = {
        Remove = [
          "eBay"
          "Bing"
          "Ecosia"
          "Perplexity"
          "Wikipedia (en)"
        ];
        PreventInstalls = true;
        Default = "Google";
      };
      SearchSuggestEnabled = true;
      SSLVersionMin = "tls1.2";
    };

    enable = true;
  };
}
