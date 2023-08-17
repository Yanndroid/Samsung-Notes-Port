.class public interface abstract Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008f\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\"\u0010\u0008\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH&J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007H&J\u0008\u0010\u0010\u001a\u00020\u0003H&J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0012H&J\u0008\u0010\u0013\u001a\u00020\u000cH&J\u0008\u0010\u0014\u001a\u00020\u000cH&J\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0012H&J\u0008\u0010\u0018\u001a\u00020\u000cH&J\u0008\u0010\u0019\u001a\u00020\u000cH&J\u001a\u0010\u001a\u001a\u00020\u000c2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u001c\u001a\u00020\u000cH&J\n\u0010\u001d\u001a\u0004\u0018\u00010\u0012H&J\u0008\u0010\u001e\u001a\u00020\u0003H&J\u0010\u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u0012H&J\u001c\u0010\u001f\u001a\u00020\u00032\u0008\u0010 \u001a\u0004\u0018\u00010\u00122\u0008\u0010!\u001a\u0004\u0018\u00010\u0012H&J$\u0010\u001f\u001a\u00020\u00032\u0008\u0010 \u001a\u0004\u0018\u00010\u00122\u0008\u0010!\u001a\u0004\u0018\u00010\u00122\u0006\u0010\"\u001a\u00020#H&J&\u0010\u001f\u001a\u00020\u00032\u0008\u0010 \u001a\u0004\u0018\u00010\u00122\u0008\u0010!\u001a\u0004\u0018\u00010\u00122\u0008\u0010$\u001a\u0004\u0018\u00010\u0012H&J\u0012\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010\u0012H&J\u0008\u0010(\u001a\u00020&H&J\u0008\u0010)\u001a\u00020&H&J\u001a\u0010*\u001a\u00020&2\u0008\u0010+\u001a\u0004\u0018\u00010,2\u0006\u0010-\u001a\u00020&H&J\u0008\u0010.\u001a\u00020&H&J\u0008\u0010/\u001a\u00020&H&J\u0012\u00100\u001a\u00020&2\u0008\u00101\u001a\u0004\u0018\u00010\u0012H&J\u0008\u00102\u001a\u00020&H&J\u0008\u00103\u001a\u00020&H&J\u0008\u00104\u001a\u00020&H&J\u0008\u00105\u001a\u00020&H&J\u0008\u00106\u001a\u00020&H&J\u0008\u00107\u001a\u00020&H&J\u0008\u00108\u001a\u00020&H&J$\u00109\u001a\u00020&2\u0008\u0010:\u001a\u0004\u0018\u00010;2\u0008\u0010<\u001a\u0004\u0018\u00010\u00122\u0006\u0010=\u001a\u00020&H&J\u001a\u0010>\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010?\u001a\u00020\u000cH&J\u001c\u0010@\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010A\u001a\u0004\u0018\u00010\u0012H&J\u001a\u0010B\u001a\u00020\u00032\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00122\u0006\u0010\"\u001a\u00020\u000cH&J\"\u0010C\u001a\u00020\u00032\u0008\u0010+\u001a\u0004\u0018\u00010,2\u0006\u0010D\u001a\u00020\u000c2\u0006\u0010E\u001a\u00020\u000cH&J$\u0010C\u001a\u00020\u00032\u0008\u0010+\u001a\u0004\u0018\u00010,2\u0008\u0010F\u001a\u0004\u0018\u00010\u00122\u0006\u0010E\u001a\u00020\u000cH&\u00a8\u0006G"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;",
        "",
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


# virtual methods
.method public abstract applyTextSizeUntilLargeSize(Landroid/widget/TextView;F)V
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract changeCustomButtonBackgroundUnchangedTextColor(Landroid/view/View;II)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract convertPixelToSp(F)F
.end method

.method public abstract executeBaseLogic()V
.end method

.method public abstract getBrushFileExtension()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getColorPrimary()I
.end method

.method public abstract getCoverType()I
.end method

.method public abstract getFileNameByTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getMaxTextureSize()I
.end method

.method public abstract getScreenOrientation()I
.end method

.method public abstract getSmartTipsPreference(Ljava/lang/String;I)I
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getThumbnailExtension()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract initializePenLibrary()V
.end method

.method public abstract insertLog(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract insertLog(Ljava/lang/String;Ljava/lang/String;J)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract isActivityRunning(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract isAvailableMemoryForNewDocument()Z
.end method

.method public abstract isAvailableMinimumMemory()Z
.end method

.method public abstract isCoverClosed(Landroid/content/Context;Z)Z
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract isNewSepLightModel()Z
.end method

.method public abstract isOnMainUIThread()Z
.end method

.method public abstract isPackageInstalledAndEnabled(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract isRTLMode()Z
.end method

.method public abstract isSepLightModel()Z
.end method

.method public abstract isShopDemoDevice()Z
.end method

.method public abstract isShowButtonShapeEnabled()Z
.end method

.method public abstract isSpenModel()Z
.end method

.method public abstract isTabletModel()Z
.end method

.method public abstract isVoiceAssistantEnabled()Z
.end method

.method public abstract makeJpg(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setButtonShapeEnabledWithTextColor(Landroid/view/View;I)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setFont(Landroid/widget/TextView;Ljava/lang/String;)V
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setSmartTipsPreference(Ljava/lang/String;I)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract showToast(Landroid/content/Context;II)V
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
