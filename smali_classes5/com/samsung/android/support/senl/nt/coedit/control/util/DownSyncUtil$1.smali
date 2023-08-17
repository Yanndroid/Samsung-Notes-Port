.class Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/network/networkutils/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil;->requestDownSync(Landroid/content/Context;Ljava/io/ByteArrayInputStream;Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil$ResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$parseResponseXml:Lcom/samsung/android/support/senl/nt/coedit/control/util/ParseResponseXml;

.field public final synthetic val$responseHandler:Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil$ResponseHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/util/ParseResponseXml;Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil$ResponseHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil$1;->val$parseResponseXml:Lcom/samsung/android/support/senl/nt/coedit/control/util/ParseResponseXml;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil$1;->val$responseHandler:Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil$ResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleBinaryBody(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    const-string p1, "_"

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil$1;->val$responseHandler:Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil$ResponseHandler;

    invoke-interface {p2, p1, p3}, Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil$ResponseHandler;->handleBinaryBody(Ljava/lang/String;[B)V

    return-void
.end method

.method public handleInputStreamBody(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    return-void
.end method

.method public handleStringBody(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil$1;->val$parseResponseXml:Lcom/samsung/android/support/senl/nt/coedit/control/util/ParseResponseXml;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/util/ParseResponseXml;->extractDownloadUrls(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/DownSyncUtil$1;->val$parseResponseXml:Lcom/samsung/android/support/senl/nt/coedit/control/util/ParseResponseXml;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/util/ParseResponseXml;->extractNoteResource(Ljava/lang/String;)V

    return-void
.end method
