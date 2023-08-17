.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createCacheInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetCacheInfo;
.end method

.method public abstract createThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetCacheInfo;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
.end method

.method public abstract hasWidget(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract isAvailableToAddWidget(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract isAvailableToReferWidget(Landroid/content/Context;)Z
.end method

.method public abstract isSupportedPinToHome(Landroid/content/Context;)Z
.end method

.method public abstract pinToHme(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract removeCacheInfo(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract showWidgetAlreadyPinToast(Landroid/content/Context;)V
.end method

.method public abstract showWidgetMaximumToast(Landroid/content/Context;)V
.end method

.method public abstract updateWidgetDocPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method
