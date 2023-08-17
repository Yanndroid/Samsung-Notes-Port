.class public final LnoteSnapMessage/DownloadRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LnoteSnapMessage/DownloadRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LnoteSnapMessage/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LnoteSnapMessage/DownloadRequest;",
        "LnoteSnapMessage/DownloadRequest$Builder;",
        ">;",
        "LnoteSnapMessage/DownloadRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LnoteSnapMessage/DownloadRequest;->a()LnoteSnapMessage/DownloadRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LnoteSnapMessage/c;)V
    .locals 0

    invoke-direct {p0}, LnoteSnapMessage/DownloadRequest$Builder;-><init>()V

    return-void
.end method
