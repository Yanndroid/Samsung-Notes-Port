.class public final synthetic Lcom/samsung/scsp/framework/core/network/base/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/network/ByteBufferWriter$BufferWriterListener;


# instance fields
.field public final synthetic a:Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/network/base/s;->a:Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;

    iput-wide p2, p0, Lcom/samsung/scsp/framework/core/network/base/s;->b:J

    return-void
.end method


# virtual methods
.method public final onWritten(J)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/base/s;->a:Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;

    iget-wide v1, p0, Lcom/samsung/scsp/framework/core/network/base/s;->b:J

    invoke-static {v0, v1, v2, p1, p2}, Lcom/samsung/scsp/framework/core/network/base/PayloadWriterVisitorImpl;->a(Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;JJ)V

    return-void
.end method
