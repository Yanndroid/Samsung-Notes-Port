.class public final synthetic Lk3/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:D


# direct methods
.method public synthetic constructor <init>(IID)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lk3/r;->a:I

    iput p2, p0, Lk3/r;->b:I

    iput-wide p3, p0, Lk3/r;->c:D

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lk3/r;->a:I

    iget v1, p0, Lk3/r;->b:I

    iget-wide v2, p0, Lk3/r;->c:D

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->h(IID)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
