.class Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4$EntityWrapper;
.super Lorg/apache/http/entity/HttpEntityWrapperHC4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EntityWrapper"
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;Lorg/apache/http/HttpEntity;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4$EntityWrapper;->this$0:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;

    invoke-direct {p0, p2}, Lorg/apache/http/entity/HttpEntityWrapperHC4;-><init>(Lorg/apache/http/HttpEntity;)V

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 2

    iget-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4$EntityWrapper;->this$0:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;->access$0(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;Z)V

    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapperHC4;->consumeContent()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4$EntityWrapper;->this$0:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;->access$0(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;Z)V

    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapperHC4;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4$EntityWrapper;->this$0:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;->access$0(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;Z)V

    invoke-super {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapperHC4;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
