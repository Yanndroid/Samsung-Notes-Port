.class public interface abstract Lcom/microsoft/identity/common/java/broker/ICallValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract throwIfNotInvokedByAcceptableApp(Ljava/lang/String;ILjava/util/Map;)V
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method
