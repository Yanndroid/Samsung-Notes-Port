.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuReminder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_REMINDER_TEXT_LENGTH:I = 0x5dc

.field private static final TAG:Ljava/lang/String;

.field private static final mReminderPackageName:Ljava/lang/String; = "com.samsung.android.app.reminder"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OptionMenuReminder"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuReminder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convertBitmapToUri(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;-><init>()V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;->getShareContentsFileProviderUri(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "com.samsung.android.app.reminder"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, p2, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p2

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuReminder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertBitmapToUri# "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private setText(Landroid/content/Intent;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getTitle()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object p2

    const-string v0, "primary_text"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x5dc

    if-lt p2, v0, :cond_0

    const/4 p2, 0x0

    const/16 v0, 0x5db

    invoke-virtual {p3, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    :cond_0
    const-string p2, "secondary_text"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public isReminderPackageExistAndUsable(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->isKMemoPackage(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isSemDevice()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v0

    const v2, 0x7270e00

    const-string v3, "com.samsung.android.app.reminder"

    invoke-virtual {v0, p1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isPowerManageMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public sendReminderIntent(Landroid/app/Activity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;)V
    .locals 7

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p3, v0, :cond_0

    const-string p3, "com.samsung.android.app.reminder.data.eventreceiver.ShareViaReceiver"

    goto :goto_0

    :cond_0
    const-string p3, "com.samsung.android.app.reminder.eventreceiver.ShareViaReceiver"

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.reminder.action.REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.app.reminder"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_2

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectCount(Z)I

    move-result v5

    if-gtz v5, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p3

    if-eq v4, v1, :cond_4

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-virtual {v1, v2, p3, v4}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setContents(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-ne v2, v4, :cond_3

    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->PAGE_RATIO:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->getHeight(I)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v2, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->captureRect(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_3

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->capturePage(F)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_3
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->close()V

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuReminder;->convertBitmapToUri(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "thumbnail_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "image"

    goto :goto_4

    :cond_4
    const-string v1, "text"

    :goto_4
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x5dc

    if-le v2, v4, :cond_5

    move v2, v4

    :cond_5
    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-static {p3, v3, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextFactory;->copyText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;II)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object p3

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;

    invoke-direct {v2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;-><init>(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;->setClearSpace(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;

    move-result-object p3

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$ObjectSpanClearConverterImpl;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$ObjectSpanClearConverterImpl;-><init>()V

    invoke-virtual {p3, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;->setConverter(Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$IObjectSpanConverter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;

    move-result-object p3

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox;-><init>()V

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputBuilder;->done()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox;->handleText(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleTextBox$InputValues;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_5

    :cond_6
    const-string p3, ""

    :goto_5
    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuReminder;->setText(Landroid/content/Intent;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V

    const-string p2, "type"

    const-string p3, "notes"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "isHandwriting"

    invoke-virtual {v0, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "type_detail"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "doc_type"

    const-string p3, "sdocx"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "com.samsung.android.app.notes"

    const-string v1, "com.samsung.android.app.notes.nativecomposer.NativeComposerReminderTriggerActivity"

    invoke-virtual {p2, p3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "com.samsung.android.app.notes.ACTION_OPEN_MEMO"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "sdoc_uuid"

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p3, 0x14000000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p5, :cond_7

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getSpaceId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getSpaceId()Ljava/lang/String;

    move-result-object p3

    const-string p4, "mde_space_id"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getGroupId()Ljava/lang/String;

    move-result-object p3

    const-string p4, "mde_group_id"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getOwnerId()Ljava/lang/String;

    move-result-object p3

    const-string p4, "mde_owner_id"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getCreatorName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "writer_name"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getAccountType()I

    move-result p3

    const-string p4, "account_type"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_7
    const-string p3, "action"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
