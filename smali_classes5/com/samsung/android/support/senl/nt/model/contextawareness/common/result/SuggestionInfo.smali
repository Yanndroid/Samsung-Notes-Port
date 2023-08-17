.class public abstract Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mId:Ljava/lang/String;

.field public mIntent:Landroid/content/Intent;

.field public mPackageName:Ljava/lang/String;

.field private mSuggestionData:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SuggestionInfo"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CALogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->mIntent:Landroid/content/Intent;

    const-string v0, "source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->setSuggestionInfo()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->mSuggestionData:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->mId:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->mSuggestionData:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "source"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->mPackageName:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/util/ResultGetter;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->setRepresentativeAppIcon()V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->mSuggestionData:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->mTitle:Ljava/lang/String;

    sget-object p1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SuggestionInfo from SuggestionItem - id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appIcon : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionData()Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->mSuggestionData:Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionData;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public abstract isValidExecution()Z
.end method

.method public setRepresentativeAppIcon()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/model/R$array;->donated_app_image:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v1, Lcom/samsung/android/support/senl/nt/model/R$drawable;->representative_app_icon_image:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/model/R$array;->donated_app_internet:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v1, Lcom/samsung/android/support/senl/nt/model/R$drawable;->representative_app_icon_internet:I

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/model/R$array;->donated_app_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget v1, Lcom/samsung/android/support/senl/nt/model/R$drawable;->representative_app_icon_message:I

    goto :goto_0

    :cond_5
    const v1, 0x1080093

    goto :goto_0
.end method

.method public abstract setSuggestionInfo()V
.end method
