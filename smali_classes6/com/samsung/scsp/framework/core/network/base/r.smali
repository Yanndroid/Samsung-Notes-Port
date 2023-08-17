.class public final synthetic Lcom/samsung/scsp/framework/core/network/base/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/common/Supplier;


# instance fields
.field public final synthetic a:Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/network/base/r;->a:Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/base/r;->a:Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;

    invoke-static {v0}, Lcom/samsung/scsp/framework/core/network/base/PayloadWriterVisitorImpl;->b(Lcom/samsung/scsp/framework/core/network/visitor/PayloadWriterVisitor$Payload;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
