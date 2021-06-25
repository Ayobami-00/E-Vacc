class OnboardingSlider {
  String? lottieJsonPath;
  String? title;
  String? desc;

  OnboardingSlider({
    this.lottieJsonPath,
    this.title,
    this.desc,
  });

  // ignore: avoid_setters_without_getters
  set setLottieJsonAssetPath(String getlottieJsonpath) {
    lottieJsonPath = getlottieJsonpath;
  }

  // ignore: avoid_setters_without_getters
  set setTile(String getTitle) {
    title = getTitle;
  }

  // ignore: avoid_setters_without_getters
  set setDesc(String getDesc) {
    desc = getDesc;
  }

  String? get getlottieJsonAssetPath {
    return lottieJsonPath;
  }

  String? get getTitle {
    return title;
  }

  String? get getDesc {
    return desc;
  }
}

List<OnboardingSlider> getSlides() {
  final List<OnboardingSlider> slides = <OnboardingSlider>[];
  OnboardingSlider onboardingSlider = OnboardingSlider();

  //0
  onboardingSlider.setLottieJsonAssetPath =
      "lib/assets/animations/onboarding_1.json";
  onboardingSlider.setTile = "GLOBAL ACCESS";
  onboardingSlider.setDesc =
      "Access your Vaccine Credentials anywhere from your mobile phone";
  slides.add(onboardingSlider);

  onboardingSlider = OnboardingSlider();

  //1
  onboardingSlider.setLottieJsonAssetPath =
      "lib/assets/animations/onboarding_2.json";
  onboardingSlider.setTile = "UPLOAD";
  onboardingSlider.setDesc =
      "Login and take a picture of your Vaccination card to upload to your Google Drive";
  slides.add(onboardingSlider);

  onboardingSlider = OnboardingSlider();

  //2
  onboardingSlider.setLottieJsonAssetPath =
      "lib/assets/animations/onboarding_3.json";
  onboardingSlider.setTile = "RETRIEVE";
  onboardingSlider.setDesc =
      "Retrieve your vaccination card or find your vaccination card by manufacturer, date, e.t.c";
  slides.add(onboardingSlider);

  onboardingSlider = OnboardingSlider();

  return slides;
}
