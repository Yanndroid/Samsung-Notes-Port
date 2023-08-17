.class public interface abstract Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/GcsImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onActivityResult(IILandroid/content/Intent;)V
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onNewNote(Ljava/lang/String;I)V
.end method

.method public abstract onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
