.class public interface abstract Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActivityContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivityContract"
.end annotation


# virtual methods
.method public abstract finishActivity()V
.end method

.method public abstract getActivity()Landroidx/fragment/app/FragmentActivity;
.end method

.method public abstract launchActivity(Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;)V
.end method

.method public abstract onSessionConnected(Z)V
.end method
