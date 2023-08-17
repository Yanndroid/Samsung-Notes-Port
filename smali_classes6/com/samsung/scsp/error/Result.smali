.class public Lcom/samsung/scsp/error/Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/scsp/error/Result$Holder;
    }
.end annotation


# static fields
.field private static final FAIL:I = 0x2

.field private static final RCODE:Ljava/lang/String; = "rcode"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final RMSG:Ljava/lang/String; = "rmsg"

.field private static final SUCCESS:I = 0x1


# instance fields
.field public final rcode:I

.field public final result:I

.field public final rmsg:Ljava/lang/String;

.field public final success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/scsp/error/Result;->success:Z

    iput v0, p0, Lcom/samsung/scsp/error/Result;->result:I

    const v0, 0x1312d00

    iput v0, p0, Lcom/samsung/scsp/error/Result;->rcode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/scsp/error/Result;->rmsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/scsp/error/Result;->success:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/scsp/error/Result;->result:I

    iput p1, p0, Lcom/samsung/scsp/error/Result;->rcode:I

    iput-object p2, p0, Lcom/samsung/scsp/error/Result;->rmsg:Ljava/lang/String;

    return-void
.end method

.method public static isSuccess(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "result"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public bundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/samsung/scsp/error/Result;->result:I

    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/scsp/error/Result;->rcode:I

    const-string v2, "rcode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/scsp/error/Result;->rmsg:Ljava/lang/String;

    const-string v2, "rmsg"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
