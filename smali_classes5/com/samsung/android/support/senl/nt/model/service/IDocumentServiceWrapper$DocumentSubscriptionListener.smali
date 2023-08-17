.class public interface abstract Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper$DocumentSubscriptionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DocumentSubscriptionListener"
.end annotation


# virtual methods
.method public abstract onSubscribed(Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;)V
    .param p1    # Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onUnsubscribed(Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;)V
    .param p1    # Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
