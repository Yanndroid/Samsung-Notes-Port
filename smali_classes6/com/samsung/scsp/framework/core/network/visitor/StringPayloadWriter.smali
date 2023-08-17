.class public Lcom/samsung/scsp/framework/core/network/visitor/StringPayloadWriter;
.super Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$PayloadWriter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$PayloadWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor;)V
    .locals 0

    invoke-interface {p2, p1, p0}, Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor;->visit(Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;Lcom/samsung/scsp/framework/core/network/visitor/StringPayloadWriter;)V

    return-void
.end method
