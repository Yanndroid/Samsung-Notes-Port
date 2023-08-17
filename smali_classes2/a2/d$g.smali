.class public final La2/d$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La2/d$g;->a:I

    const-string v0, ""

    iput-object v0, p0, La2/d$g;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(La2/e;)V
    .locals 0

    invoke-direct {p0}, La2/d$g;-><init>()V

    return-void
.end method
