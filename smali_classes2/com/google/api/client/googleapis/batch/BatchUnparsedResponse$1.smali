.class Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$1;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->parseNextResponse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;


# direct methods
.method public constructor <init>(Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$1;->this$0:Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method
