.class public final Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J\"\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0007J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\nH\u0007J\u0008\u0010\u0013\u001a\u00020\u0006H\u0007J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0007J\u0008\u0010\u0016\u001a\u00020\u000fH\u0007J\u0008\u0010\u0017\u001a\u00020\u000fH\u0007J\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u0015H\u0007J\u0008\u0010\u001b\u001a\u00020\u000fH\u0007J\u0008\u0010\u001c\u001a\u00020\u000fH\u0007J\u001a\u0010\u001d\u001a\u00020\u000f2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u001f\u001a\u00020\u000fH\u0007J\u0008\u0010 \u001a\u00020\u0015H\u0007J\u0008\u0010!\u001a\u00020\u0006H\u0007J\u0010\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u0015H\u0007J\u001c\u0010\"\u001a\u00020\u00062\u0008\u0010#\u001a\u0004\u0018\u00010\u00152\u0008\u0010$\u001a\u0004\u0018\u00010\u0015H\u0007J$\u0010\"\u001a\u00020\u00062\u0008\u0010#\u001a\u0004\u0018\u00010\u00152\u0008\u0010$\u001a\u0004\u0018\u00010\u00152\u0006\u0010%\u001a\u00020&H\u0007J&\u0010\"\u001a\u00020\u00062\u0008\u0010#\u001a\u0004\u0018\u00010\u00152\u0008\u0010$\u001a\u0004\u0018\u00010\u00152\u0008\u0010\'\u001a\u0004\u0018\u00010\u0015H\u0007J\u0012\u0010(\u001a\u00020)2\u0008\u0010*\u001a\u0004\u0018\u00010\u0015H\u0007J\u0008\u0010+\u001a\u00020)H\u0007J\u0008\u0010,\u001a\u00020)H\u0007J\u001a\u0010-\u001a\u00020)2\u0008\u0010.\u001a\u0004\u0018\u00010/2\u0006\u00100\u001a\u00020)H\u0007J\u0008\u00101\u001a\u00020)H\u0007J\u0008\u00102\u001a\u00020)H\u0007J\u0012\u00103\u001a\u00020)2\u0008\u00104\u001a\u0004\u0018\u00010\u0015H\u0007J\u0008\u00105\u001a\u00020)H\u0007J\u0008\u00106\u001a\u00020)H\u0007J\u0008\u00107\u001a\u00020)H\u0007J\u0008\u00108\u001a\u00020)H\u0007J\u0008\u00109\u001a\u00020)H\u0007J\u0008\u0010:\u001a\u00020)H\u0007J\u0008\u0010;\u001a\u00020)H\u0007J$\u0010<\u001a\u00020)2\u0008\u0010=\u001a\u0004\u0018\u00010>2\u0008\u0010?\u001a\u0004\u0018\u00010\u00152\u0006\u0010@\u001a\u00020)H\u0007J\u001a\u0010A\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010B\u001a\u00020\u000fH\u0007J\u0012\u0010C\u001a\u00020\u00062\u0008\u0010D\u001a\u0004\u0018\u00010\u0004H\u0007J\u001c\u0010E\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010F\u001a\u0004\u0018\u00010\u0015H\u0007J\u001a\u0010G\u001a\u00020\u00062\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u001f\u001a\u00020\u000fH\u0007J\"\u0010H\u001a\u00020\u00062\u0008\u0010.\u001a\u0004\u0018\u00010/2\u0006\u0010I\u001a\u00020\u000f2\u0006\u0010J\u001a\u00020\u000fH\u0007J$\u0010H\u001a\u00020\u00062\u0008\u0010.\u001a\u0004\u0018\u00010/2\u0008\u0010K\u001a\u0004\u0018\u00010\u00152\u0006\u0010J\u001a\u00020\u000fH\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006L"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;",
        "",
        "()V",
        "mDelegate",
        "Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;",
        "applyTextSizeUntilLargeSize",
        "",
        "textView",
        "Landroid/widget/TextView;",
        "fontSize",
        "",
        "changeCustomButtonBackgroundUnchangedTextColor",
        "view",
        "Landroid/view/View;",
        "btnShapeBGId1",
        "",
        "btnShapeBGId2",
        "convertPixelToSp",
        "pixel",
        "executeBaseLogic",
        "getBrushFileExtension",
        "",
        "getColorPrimary",
        "getCoverType",
        "getFileNameByTime",
        "prefix",
        "extension",
        "getMaxTextureSize",
        "getScreenOrientation",
        "getSmartTipsPreference",
        "key",
        "defaultValue",
        "getThumbnailExtension",
        "initializePenLibrary",
        "insertLog",
        "screenID",
        "event",
        "value",
        "",
        "detail",
        "isActivityRunning",
        "",
        "name",
        "isAvailableMemoryForNewDocument",
        "isAvailableMinimumMemory",
        "isCoverClosed",
        "context",
        "Landroid/content/Context;",
        "cold",
        "isNewSepLightModel",
        "isOnMainUIThread",
        "isPackageInstalledAndEnabled",
        "packageName",
        "isRTLMode",
        "isSepLightModel",
        "isShopDemoDevice",
        "isShowButtonShapeEnabled",
        "isSpenModel",
        "isTabletModel",
        "isVoiceAssistantEnabled",
        "makeJpg",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "filePath",
        "recycle",
        "setButtonShapeEnabledWithTextColor",
        "color",
        "setDelegate",
        "delegate",
        "setFont",
        "fontName",
        "setSmartTipsPreference",
        "showToast",
        "resId",
        "duration",
        "message",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final applyTextSizeUntilLargeSize(Landroid/widget/TextView;F)V
    .locals 1
    .param p0    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->applyTextSizeUntilLargeSize(Landroid/widget/TextView;F)V

    :cond_0
    return-void
.end method

.method public static final changeCustomButtonBackgroundUnchangedTextColor(Landroid/view/View;II)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->changeCustomButtonBackgroundUnchangedTextColor(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public static final convertPixelToSp(F)F
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->convertPixelToSp(F)F

    move-result p0

    :cond_0
    return p0
.end method

.method public static final executeBaseLogic()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->executeBaseLogic()V

    :cond_0
    return-void
.end method

.method public static final getBrushFileExtension()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->getBrushFileExtension()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ".spp"

    :cond_1
    return-object v0
.end method

.method public static final getColorPrimary()I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->getColorPrimary()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final getCoverType()I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->getCoverType()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public static final getFileNameByTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "prefix"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extension"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->getFileNameByTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static final getMaxTextureSize()I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->getMaxTextureSize()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static final getScreenOrientation()I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->getScreenOrientation()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final getSmartTipsPreference(Ljava/lang/String;I)I
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->getSmartTipsPreference(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final getThumbnailExtension()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->getThumbnailExtension()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public static final initializePenLibrary()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->initializePenLibrary()V

    :cond_0
    return-void
.end method

.method public static final insertLog(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "screenID"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->insertLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final insertLog(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->insertLog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public static final insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final isActivityRunning(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->isActivityRunning(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isAvailableMemoryForNewDocument()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->isAvailableMemoryForNewDocument()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isAvailableMinimumMemory()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->isAvailableMinimumMemory()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isCoverClosed(Landroid/content/Context;Z)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->isCoverClosed(Landroid/content/Context;Z)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isNewSepLightModel()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->isNewSepLightModel()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isOnMainUIThread()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->isOnMainUIThread()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isPackageInstalledAndEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->isPackageInstalledAndEnabled(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isRTLMode()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->isRTLMode()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isSepLightModel()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->isSepLightModel()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isShopDemoDevice()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->isShopDemoDevice()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isShowButtonShapeEnabled()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->isShowButtonShapeEnabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isSpenModel()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->isSpenModel()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isTabletModel()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->isTabletModel()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isVoiceAssistantEnabled()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->isVoiceAssistantEnabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final makeJpg(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
    .locals 1
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->makeJpg(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final setButtonShapeEnabledWithTextColor(Landroid/view/View;I)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->setButtonShapeEnabledWithTextColor(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public static final setDelegate(Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;)V
    .locals 0
    .param p0    # Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sput-object p0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    return-void
.end method

.method public static final setFont(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->setFont(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final setSmartTipsPreference(Ljava/lang/String;I)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->setSmartTipsPreference(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static final showToast(Landroid/content/Context;II)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->showToast(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method

.method public static final showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->mDelegate:Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
