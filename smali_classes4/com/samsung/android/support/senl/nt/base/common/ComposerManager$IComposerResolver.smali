.class public interface abstract Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IComposerResolver"
.end annotation


# virtual methods
.method public abstract close(Ljava/lang/String;Ljava/lang/Runnable;)Z
.end method

.method public abstract closeCoeditComposer(Ljava/lang/Runnable;)V
.end method

.method public abstract getFolderId()Ljava/lang/String;
.end method

.method public abstract getUuid()Ljava/lang/String;
.end method

.method public abstract hasVoiceNotification()Z
.end method

.method public abstract isCoeditMode()Z
.end method

.method public abstract isCoeditNote()Z
.end method

.method public abstract isEditMode()Z
.end method

.method public abstract isEditable()Z
.end method

.method public abstract requestViewMode()V
.end method
