.class public interface abstract Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil$ResponseHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResponseHandler"
.end annotation


# virtual methods
.method public abstract handleBinaryBody(Ljava/lang/String;[B)V
.end method

.method public abstract handleDownloadUrlMap(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract handleDownloadXmlData(Ljava/lang/String;)V
.end method
