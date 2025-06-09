## 📦 Package Structure
 ```
com
├── example
│   └── mylibrary
│       └── LDSDKEncryption.java
└── kugoo
    └── kugookirin
        ├── bean
        │   ├── BaseResponse.java
        │   ├── HomepageInfoData.java
        │   ├── MapSearchResultItem.java
        │   ├── NearBySearchBean.java
        │   ├── PagerItem.java
        │   ├── PublishLocBean.java
        │   ├── RankInfo.java
        │   ├── ResultListResponse.java
        │   ├── ResultResponse.java
        │   ├── RouteDetailInfo.java
        │   ├── TrackInfoBean.java
        │   ├── UserPageInfo.java
        │   └── VehicleInfoResp.java
        ├── bluetooth
        │   ├── BleDevicesAdapter.java
        │   ├── BleMutualAuthentication.java
        │   ├── BluetoothGattExecutor.java
        │   ├── BytesUtils.java
        │   ├── DiscoverActivity.java
        │   └── LFBluetootService.java
        ├── dataBase
        │   ├── DBOpenHelper.java
        │   ├── GPSInfo.java
        │   └── GPSInfoService.java
        ├── more
        │   ├── adapter
        │   │   ├── DayRankAdapter.java
        │   │   ├── MonthRankAdapter.java
        │   │   ├── TotalRankAdapter.java
        │   │   └── WeekRankAdapter.java
        │   ├── ComProfileActivity.java
        │   ├── DarkModeActivity.java
        │   ├── MoreFragment.java
        │   ├── NaviFragment.java
        │   ├── RankDayFragment.java
        │   ├── RankListActivity.java
        │   ├── RankMonthFragment.java
        │   ├── RankTotalFragment.java
        │   ├── RankWeekFragment.java
        │   ├── ServiceActivity.java
        │   ├── ShowTrackActivity.java
        │   ├── TrackFragment.java
        │   └── TrackRecordActivity.java
        ├── social
        │   ├── adapter
        │   │   ├── DiscoverPageAdapter.java
        │   │   ├── DiscoverRankingAdapter.java
        │   │   ├── DynamicDetailAdapter.java
        │   │   ├── ForYouAdapter.java
        │   │   ├── FriendFollowerAdapter.java
        │   │   ├── HomePageInfoAdapter.java
        │   │   ├── HomePagePostsAdapter.java
        │   │   ├── InfoHintAdapter.java
        │   │   ├── MessageAdapter.java
        │   │   ├── NoScrollGridAdapter.java
        │   │   ├── PublishLocAdapter.java
        │   │   ├── RemindAdapter.java
        │   │   ├── RemindSelectedAdapter.java
        │   │   ├── SearchPostAdapter.java
        │   │   ├── SearchUserAdapter.java
        │   │   └── SearchVehicleAdapter.java
        │   ├── bean
        │   │   ├── AddLabelInfo.java
        │   │   ├── DeleteCommentResult.java
        │   │   ├── DeleteDynamicInfo.java
        │   │   ├── DiscoverBean.java
        │   │   ├── DynDetailInfo.java
        │   │   ├── FollowUserInfo.java
        │   │   ├── ForYouBean.java
        │   │   ├── FriendInfo.java
        │   │   ├── HintInfoList.java
        │   │   ├── HomePagePostsBean.java
        │   │   ├── LabelInfo.java
        │   │   ├── PostCommentResult.java
        │   │   ├── RemindInfo.java
        │   │   ├── SearchPostInfo.java
        │   │   ├── SearchRemindInfo.java
        │   │   ├── SearchUserInfo.java
        │   │   ├── SearchVehicleInfo.java
        │   │   └── ShowUserAllDynamics.java
        │   ├── CirclePlayVideoActivity.java
        │   ├── DiscoverFragment.java
        │   ├── DiscoverSearchActivity.java
        │   ├── DynamicDetailActivity.java
        │   ├── DynamicSettingActivity.java
        │   ├── ForYouFragment.java
        │   ├── FriendListActivity.java
        │   ├── HackyViewPager.java
        │   ├── HomePageActivity.java
        │   ├── ImageDetailFragment.java
        │   ├── ImagePagerActivity.java
        │   ├── InfoHintActivity.java
        │   ├── PopularFragment.java
        │   ├── PublishActivity.java
        │   ├── PublishLocActivity.java
        │   ├── PublishRemindActivity.java
        │   ├── PublishTopicActivity.java
        │   ├── RecognitionFragment.java
        │   ├── SearchTopicFragment.java
        │   ├── SearchUserFragment.java
        │   └── SearchVehicleFragment.java
        ├── user
        │   ├── adapter
        │   │   └── AreaCodeAdapter.java
        │   ├── bean
        │   │   └── AreaCodeItem.java
        │   ├── country
        │   │   ├── CharacterParserUtil.java
        │   │   ├── CountryActivity.java
        │   │   ├── CountryComparator.java
        │   │   ├── CountryModel.java
        │   │   ├── CountrySortAdapter.java
        │   │   ├── CountrySortModel.java
        │   │   ├── CountrySortToken.java
        │   │   ├── GetCountryNameSort.java
        │   │   ├── GetFlatList.java
        │   │   └── SideBar.java
        │   ├── AgreementActivity.java
        │   ├── ChangeNameActivity.java
        │   ├── ChangeUserPwdActivity.java
        │   ├── CheckEmailActivity.java
        │   ├── EmailForgotActivity.java
        │   ├── EmailLoginActivity.java
        │   ├── EmailSignUpActivity.java
        │   ├── MobileForgotActivity.java
        │   ├── MobileLoginActivity.java
        │   ├── MobileSignUpActivity.java
        │   ├── ModifyPersonalActivity.java
        │   └── SignLoginActivity.java
        ├── utils
        │   ├── ChangeToHour.java
        │   ├── CheckAppUpdataUtils.java
        │   ├── Constants.java
        │   ├── CrashHandlers.java
        │   ├── DateUtility.java
        │   ├── DensityUtils.java
        │   ├── DividerItemDecoration.java
        │   ├── FileUtils.java
        │   ├── GetPhoneInfo.java
        │   ├── GlideLoader.java
        │   ├── ImageLoaderUtils.java
        │   ├── MultipartEntity.java
        │   ├── MyApplication.java
        │   ├── MyPreference.java
        │   ├── NetLink.java
        │   ├── RouteUtils.java
        │   ├── ScreenShot.java
        │   ├── ScrollViewListViewTogether.java
        │   ├── SizeUtils.java
        │   ├── StatusBarUtil.java
        │   ├── StringToAscii.java
        │   ├── SwapWrapperUtils.java
        │   ├── SwipeMenuBuilder.java
        │   ├── toolUtil.java
        │   ├── Utils.java
        │   ├── VolleySingleton.java
        │   └── YiHuoUtil.java
        ├── vehicle
        │   ├── adapter
        │   │   ├── GpsInfoAdapter.java
        │   │   ├── PosSearchedAdapter.java
        │   │   ├── RecyclerAdapter.java
        │   │   ├── TrajectoryAdapter.java
        │   │   └── VehicleListAdapter.java
        │   ├── bean
        │   │   ├── NfcCard.java
        │   │   ├── SwipeMenu.java
        │   │   └── SwipeMenuItem.java
        │   ├── BeamLightsActivity.java
        │   ├── BrakeForceActivity.java
        │   ├── BrightnessActivity.java
        │   ├── ChangeBleInfoActivity.java
        │   ├── ChangeMottoActivity.java
        │   ├── ChangeUnitActivity.java
        │   ├── CheckInfoActivity.java
        │   ├── CycleInfoActivity.java
        │   ├── NavigationalSearchActivity.java
        │   ├── NewNfcActivity.java
        │   ├── NfcActivity.java
        │   ├── SettingsActivity.java
        │   ├── SpeedLimitActivity.java
        │   ├── StartupActivity.java
        │   ├── SystemInfoActivity.java
        │   ├── TemptureUnitActivity.java
        │   ├── ThrottleStartingForceActivity.java
        │   ├── UserGuideActivity.java
        │   ├── VehicleFragment.java
        │   └── VehicleInfoActivity.java
        ├── view
        │   ├── AutoDismissDialog.java
        │   ├── AvatorView02.java
        │   ├── CircleImageView.java
        │   ├── CircleProgressView.java
        │   ├── CircleView.java
        │   ├── CornerImageView.java
        │   ├── DialArcSelected.java
        │   ├── DialArcUnSelect.java
        │   ├── FlowLayout.java
        │   ├── GridImageView.java
        │   ├── inputNumber.java
        │   ├── MapProgressView.java
        │   ├── MyListView.java
        │   ├── MyScrollView.java
        │   ├── MyTabLayout.java
        │   ├── MyViewPager.java
        │   ├── NoScrollGridView.java
        │   ├── NoSwipeViewPager.java
        │   ├── NotificationMenuView.java
        │   ├── PickerView.java
        │   ├── SelfCheckCircleView.java
        │   ├── ShareUploadUtil.java
        │   ├── SlideMenuView.java
        │   ├── SobLooperPager.java
        │   ├── SobViewPager.java
        │   ├── SpeedDial.java
        │   ├── SpeedSweep.java
        │   ├── SwapRecyclerView.java
        │   ├── SwipeMenuLayout.java
        │   └── SwipeMenuView.java
        ├── BaseActivity.java
        ├── LauncherActivity.java
        └── MainActivity.java
 ```
