.class public interface abstract Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$PayloadWriter;,
        Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract visit(Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;Lcom/samsung/scsp/framework/core/network/visitor/FilePayloadWriter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload<",
            "TT;>;",
            "Lcom/samsung/scsp/framework/core/network/visitor/FilePayloadWriter;",
            ")V"
        }
    .end annotation
.end method

.method public abstract visit(Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;Lcom/samsung/scsp/framework/core/network/visitor/StringPayloadWriter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload<",
            "TT;>;",
            "Lcom/samsung/scsp/framework/core/network/visitor/StringPayloadWriter;",
            ")V"
        }
    .end annotation
.end method
