.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMenuManager"
.end annotation


# static fields
.field public static final HIDE_SORT_PAGE:I = 0x5

.field public static final SEEK_AUDIO_FORWARD:I = 0x7

.field public static final SEEK_AUDIO_REWIND:I = 0x8

.field public static final SHOW_CAMERA_ATTACH_MENU:I = 0x1

.field public static final SHOW_IMAGE_ATTACH_MENU:I = 0x2

.field public static final SHOW_LIST_MENU:I = 0x3

.field public static final TOGGLE_AUDIO_PLAY:I = 0xa

.field public static final TOGGLE_SORT_PAGE:I = 0x4

.field public static final TOGGLE_TOOLBAR_VISIBILITY:I = 0x6

.field public static final TOGGLE_VOICE_PANEL:I = 0x9

.field public static final TOGGLE_ZOOM_LOCK:I = 0xb


# virtual methods
.method public abstract finish(Ljava/lang/String;)Z
.end method

.method public abstract invalidateOptionsMenu()V
.end method

.method public abstract isClickedPageList()Z
.end method

.method public abstract isEnabledInAppCollaboration()Z
.end method

.method public abstract isPageListShowing()Z
.end method

.method public abstract isRestrictedInAppCollaboration()Z
.end method

.method public abstract isToolbarShowing()Z
.end method

.method public abstract onEvent(I)V
.end method

.method public abstract onSearchDone(Ljava/lang/String;)V
.end method

.method public abstract stopVoice()V
.end method
