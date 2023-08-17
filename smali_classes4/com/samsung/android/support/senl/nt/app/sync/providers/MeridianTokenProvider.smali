.class public Lcom/samsung/android/support/senl/nt/app/sync/providers/MeridianTokenProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static final MERIDIAN_STATUS:Ljava/lang/String; = "MERIDIAN_STATUS"

.field private static final ONEDRIVE_PACKAGE_NAME:Ljava/lang/String; = "com.microsoft.skydrive"

.field private static final ONEDRIVE_PACKAGE_SIGNATURE:Ljava/lang/String; = "30820716308204fea00302010202133300000015f089dbf10b587c28000000000015300d06092a864886f70d01010b0500308190310b3009060355040613025553311330110603550408130a57617368696e67746f6e3110300e060355040713075265646d6f6e64311e301c060355040a13154d6963726f736f667420436f72706f726174696f6e313a3038060355040313314d6963726f736f667420436f72706f726174696f6e205468697264205061727479204d61726b6574706c61636520504341301e170d3132303832343230323030375a170d3333313132343230323030375a3081cc310b3009060355040613025553311330110603550408130a57617368696e67746f6e3110300e060355040713075265646d6f6e64311e301c060355040a13154d6963726f736f667420436f72706f726174696f6e312f302d060355040b1326416e64726f6964205369676e696e6720666f72204d6963726f736f667420536b794472697665314530430603550403133c4d6963726f736f667420436f72706f726174696f6e205468697264205061727479204d61726b6574706c6163652028446f204e6f742054727573742930820222300d06092a864886f70d01010105000382020f003082020a0282020100c2a4eaa7934f2b98d89a26c035e29eb9df7f5b9a586b1a412b04c7157c1b09c327e30b8e376b16fd8f721fec86ef8e59783817e250653dbaf89e4b7ca0051c473fd19284b9e7c101be6a0131c69c5d21e9ec46ce668c5e89293821b30760029e9823154c7cf07603ee347861598e5f55704ece84c5c340e13c9b74ccbf57dd601dac64b38801f268f3c1b0e448961150537f29f2b33a94dd3870780aee1f43df0bae0254c2df18fc10c5a2d137913cf5a94955d1c60ba5477d7bb094c6c3bbc9d1ee2221cb31846dfd2224ee0dd7f44c3b0aebf0d2d0d8f6d07339cf1c45f3f4f2073e0980f4ab3768e1bf0a02810a2781a54dc332f67955b959a5f505df7d086dc1eba95da5a1e5f3a345d2da581a354e8de77710f1ca17d1c451e6791c0c544c507b10e761bb1c4f782ae2394f9ecf5c2615a49466c2f91f66791e6a28056172a08873fbadffacdf4737e949b6d60a8a94810a0ccad8c80970a99d6017529e85695a8d3c9650b8904039f418dd31615dd018f8b40b45bd4da9bc726e668afea12ca13330a097a907ba9d69f16dda2677d0742ac4cafc48f25a086cceb5c46edbb0ef778c9c95f4ae9a6791c8cfa37763b8d68a4b3e2e222db265a5e68506429baf91f5abaf3689b805fd790e88d0b504161e6b8bb5a050a118104f27531c9d25fd9ea51dff7f066d2d3671e9aa9eb4123be0609e0a53308ab6158d27b1d3fd0203010001a382012930820125301d0603551d0e04160414d2de9924477dcb84cac7cfb1fa318c8f87d0c7a6301f0603551d23041830168014ae91e4609f98c00bdf1a0b6bf056332747acc7c7305c0603551d1f045530533051a04fa04d864b687474703a2f2f63726c2e6d6963726f736f66742e636f6d2f706b692f63726c2f70726f64756374732f4d6963436f725468695061724d61725043415f323031302d31302d30352e63726c306006082b0601050507010104543052305006082b060105050730028644687474703a2f2f7777772e6d6963726f736f66742e636f6d2f706b692f63657274732f4d6963436f725468695061724d61725043415f323031302d31302d30352e637274300c0603551d130101ff0402300030150603551d25040e300c060a2b0601040182374c0201300d06092a864886f70d01010b050003820201003904246a396127812aaa79c3bb472040424cc707f94d69b635c81e3266b5bca8e1206f6ba490b0db20d712ee1cbb0869a38ac8f894cfe97dd2028735dd19e08926e30d4e7e279432a107d4dcbe611e2f2d2bac6b73c4d8cc4c6019745422718702179b997cd50194c49f805e2bef3be39468a8d3fc8758952ad79e2b7c6a848dd871b76f18177c15a9b286a6fe42b11a5ce10c10244bbb75662b0c7438bd0b985fbdd517b605ac9e4adcdba79d391f3cfe45f3cb09ce86d949c8a7830f3bddc99ec4200ce191c0fa56aef4aa50667e3d9a95126a60445fe0141be2fd3b5b8670b2140b570487897bd9bfe57dcfeb26f8d27f37e6482643dd53c696fa545b39031470759491ed5c3496d97f2be0f2fd026cfe981ff6755730a401bf23ca4801811fa104cba58e5a1858973f58d3475978ac1932bcf905cbea95970ffe23d8974e86b9e19bd7a7ad32ab4a9d2925f5b9ab3edbb94fb48581c52e5a55a6f23d1b97455bee5d70974f9b3256e987ab31b59a2e3fa5ba06815d4afa01430cc96d09622e41e53e3bd9308bb21028600228f9ec499de43c19c52e11eac13cc307b9f47eaff1ee3ae7a409330198178a9e3d8ee2e3d2b1c4d8fd346bb9cf056b4d60a2cb6d7b821fa26012cbd6faf15d0d97109818ff707aeb18377b30c23c79a1d3804104ea9dce4482c04192c1b9ea3de4a9efaf76876cd4f8d6c5399e5ccadec42371"

.field public static final SAVE_REFRESH_TOKEN:Ljava/lang/String; = "SAVE_REFRESH_TOKEN"

.field private static final TAG:Ljava/lang/String; = "MeridianTokenProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getIconUri(Landroid/content/res/Resources;I)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private getImageUri(Landroid/content/res/Resources;)Landroid/net/Uri;
    .locals 3

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->meridian_info_image:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private getLargeCard(Landroid/content/res/Resources;Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->msa_header_take_note:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "headerText"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v1

    const-string v2, "bodyText"

    if-eqz v1, :cond_0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->msa_body_see_your_notes_jp:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->msa_body_see_your_notes:I

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/support/senl/nt/app/sync/providers/MeridianTokenProvider;->getLaunchIntentForLargeCard(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "intent"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/providers/MeridianTokenProvider;->getImageUri(Landroid/content/res/Resources;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "imageUri"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->msa_button_set_up:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "buttonText"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getLaunchIntentForLargeCard(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.samsung.android.app.notes.sync.ui.MS_SETTINGS"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNoteListBaseActivityClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object v0
.end method

.method private getLaunchIntentForSignOut(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.samsung.android.app.notes.sync.ui.MS_SIGNOUT"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNoteListBaseActivityClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object v0
.end method

.method private getSmallCard(Landroid/content/res/Resources;Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_log_out:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "buttonText"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/support/senl/nt/app/sync/providers/MeridianTokenProvider;->getLaunchIntentForSignOut(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "intent"

    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "actions"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string p1, "MeridianTokenProvider"

    const-string p3, "start call"

    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p3

    const-string p4, "com.microsoft.skydrive"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p4

    if-nez p4, :cond_1

    const-string p2, "getContext null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string v1, "30820716308204fea00302010202133300000015f089dbf10b587c28000000000015300d06092a864886f70d01010b0500308190310b3009060355040613025553311330110603550408130a57617368696e67746f6e3110300e060355040713075265646d6f6e64311e301c060355040a13154d6963726f736f667420436f72706f726174696f6e313a3038060355040313314d6963726f736f667420436f72706f726174696f6e205468697264205061727479204d61726b6574706c61636520504341301e170d3132303832343230323030375a170d3333313132343230323030375a3081cc310b3009060355040613025553311330110603550408130a57617368696e67746f6e3110300e060355040713075265646d6f6e64311e301c060355040a13154d6963726f736f667420436f72706f726174696f6e312f302d060355040b1326416e64726f6964205369676e696e6720666f72204d6963726f736f667420536b794472697665314530430603550403133c4d6963726f736f667420436f72706f726174696f6e205468697264205061727479204d61726b6574706c6163652028446f204e6f742054727573742930820222300d06092a864886f70d01010105000382020f003082020a0282020100c2a4eaa7934f2b98d89a26c035e29eb9df7f5b9a586b1a412b04c7157c1b09c327e30b8e376b16fd8f721fec86ef8e59783817e250653dbaf89e4b7ca0051c473fd19284b9e7c101be6a0131c69c5d21e9ec46ce668c5e89293821b30760029e9823154c7cf07603ee347861598e5f55704ece84c5c340e13c9b74ccbf57dd601dac64b38801f268f3c1b0e448961150537f29f2b33a94dd3870780aee1f43df0bae0254c2df18fc10c5a2d137913cf5a94955d1c60ba5477d7bb094c6c3bbc9d1ee2221cb31846dfd2224ee0dd7f44c3b0aebf0d2d0d8f6d07339cf1c45f3f4f2073e0980f4ab3768e1bf0a02810a2781a54dc332f67955b959a5f505df7d086dc1eba95da5a1e5f3a345d2da581a354e8de77710f1ca17d1c451e6791c0c544c507b10e761bb1c4f782ae2394f9ecf5c2615a49466c2f91f66791e6a28056172a08873fbadffacdf4737e949b6d60a8a94810a0ccad8c80970a99d6017529e85695a8d3c9650b8904039f418dd31615dd018f8b40b45bd4da9bc726e668afea12ca13330a097a907ba9d69f16dda2677d0742ac4cafc48f25a086cceb5c46edbb0ef778c9c95f4ae9a6791c8cfa37763b8d68a4b3e2e222db265a5e68506429baf91f5abaf3689b805fd790e88d0b504161e6b8bb5a050a118104f27531c9d25fd9ea51dff7f066d2d3671e9aa9eb4123be0609e0a53308ab6158d27b1d3fd0203010001a382012930820125301d0603551d0e04160414d2de9924477dcb84cac7cfb1fa318c8f87d0c7a6301f0603551d23041830168014ae91e4609f98c00bdf1a0b6bf056332747acc7c7305c0603551d1f045530533051a04fa04d864b687474703a2f2f63726c2e6d6963726f736f66742e636f6d2f706b692f63726c2f70726f64756374732f4d6963436f725468695061724d61725043415f323031302d31302d30352e63726c306006082b0601050507010104543052305006082b060105050730028644687474703a2f2f7777772e6d6963726f736f66742e636f6d2f706b692f63657274732f4d6963436f725468695061724d61725043415f323031302d31302d30352e637274300c0603551d130101ff0402300030150603551d25040e300c060a2b0601040182374c0201300d06092a864886f70d01010b050003820201003904246a396127812aaa79c3bb472040424cc707f94d69b635c81e3266b5bca8e1206f6ba490b0db20d712ee1cbb0869a38ac8f894cfe97dd2028735dd19e08926e30d4e7e279432a107d4dcbe611e2f2d2bac6b73c4d8cc4c6019745422718702179b997cd50194c49f805e2bef3be39468a8d3fc8758952ad79e2b7c6a848dd871b76f18177c15a9b286a6fe42b11a5ce10c10244bbb75662b0c7438bd0b985fbdd517b605ac9e4adcdba79d391f3cfe45f3cb09ce86d949c8a7830f3bddc99ec4200ce191c0fa56aef4aa50667e3d9a95126a60445fe0141be2fd3b5b8670b2140b570487897bd9bfe57dcfeb26f8d27f37e6482643dd53c696fa545b39031470759491ed5c3496d97f2be0f2fd026cfe981ff6755730a401bf23ca4801811fa104cba58e5a1858973f58d3475978ac1932bcf905cbea95970ffe23d8974e86b9e19bd7a7ad32ab4a9d2925f5b9ab3edbb94fb48581c52e5a55a6f23d1b97455bee5d70974f9b3256e987ab31b59a2e3fa5ba06815d4afa01430cc96d09622e41e53e3bd9308bb21028600228f9ec499de43c19c52e11eac13cc307b9f47eaff1ee3ae7a409330198178a9e3d8ee2e3d2b1c4d8fd346bb9cf056b4d60a2cb6d7b821fa26012cbd6faf15d0d97109818ff707aeb18377b30c23c79a1d3804104ea9dce4482c04192c1b9ea3de4a9efaf76876cd4f8d6c5399e5ccadec42371"

    invoke-static {p4, p3, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->verifySignatureNoHash(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    return-object v0

    :cond_2
    const-string p3, "SAVE_REFRESH_TOKEN"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p2, "wait for api"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "MERIDIAN_STATUS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->A()V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->z()Z

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/sync/providers/MeridianTokenProvider;->getMeridianStatus(Landroid/content/res/Resources;Ljava/lang/String;Landroid/content/Context;Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    return-object p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public getMeridianStatus(Landroid/content/res/Resources;Ljava/lang/String;Landroid/content/Context;Z)Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/sync/providers/MeridianTokenProvider;->getIconUri(Landroid/content/res/Resources;I)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "iconUri"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v1

    const-string v2, "titleText"

    if-eqz v1, :cond_0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->notes_jp:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->notes:I

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "showSmallCard"

    const/4 v3, 0x1

    const-string v4, "showLargeCard"

    if-eqz p4, :cond_1

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/sync/providers/MeridianTokenProvider;->getSmallCard(Landroid/content/res/Resources;Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "smallCardInfo"

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/sync/providers/MeridianTokenProvider;->getLargeCard(Landroid/content/res/Resources;Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "largeCardInfo"

    :goto_1
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method
