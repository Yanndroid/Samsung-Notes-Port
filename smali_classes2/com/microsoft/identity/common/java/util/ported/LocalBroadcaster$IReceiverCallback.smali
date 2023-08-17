.class public interface abstract Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$IReceiverCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IReceiverCallback"
.end annotation


# virtual methods
.method public abstract onReceive(Lcom/microsoft/identity/common/java/util/ported/PropertyBag;)V
    .param p1    # Lcom/microsoft/identity/common/java/util/ported/PropertyBag;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
.end method
