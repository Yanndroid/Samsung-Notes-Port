.class public Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment$OnVideoIntentFragmentListener;
    }
.end annotation


# static fields
.field private static mBackupListener:Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment$OnVideoIntentFragmentListener;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment$OnVideoIntentFragmentListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment;->mListener:Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment$OnVideoIntentFragmentListener;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.PICK"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "video/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment;->mListener:Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment$OnVideoIntentFragmentListener;

    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment;->mBackupListener:Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment$OnVideoIntentFragmentListener;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    :cond_1
    :goto_0
    invoke-interface {p1, p3}, Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment$OnVideoIntentFragmentListener;->onResult(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment;->mListener:Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment$OnVideoIntentFragmentListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment$OnVideoIntentFragmentListener;->onDestroy()V

    :cond_0
    return-void
.end method

.method public setVideoIntentFragmentListener(Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment$OnVideoIntentFragmentListener;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment;->mListener:Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment$OnVideoIntentFragmentListener;

    if-eqz v0, :cond_0

    sput-object v0, Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment;->mBackupListener:Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment$OnVideoIntentFragmentListener;

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment;->mListener:Lcom/samsung/android/sdk/pen/objectruntime/preload/VideoIntentFragment$OnVideoIntentFragmentListener;

    return-void
.end method
