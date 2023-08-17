.class public Lq0/e$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lq0/e$c;->a:I

    iput v0, p0, Lq0/e$c;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lq0/f;)V
    .locals 0

    invoke-direct {p0}, Lq0/e$c;-><init>()V

    return-void
.end method
