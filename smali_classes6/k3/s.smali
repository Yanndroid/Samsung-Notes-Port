.class public final synthetic Lk3/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:D


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;IID)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/s;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    iput p2, p0, Lk3/s;->b:I

    iput p3, p0, Lk3/s;->c:I

    iput-wide p4, p0, Lk3/s;->d:D

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lk3/s;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    iget v1, p0, Lk3/s;->b:I

    iget v2, p0, Lk3/s;->c:I

    iget-wide v3, p0, Lk3/s;->d:D

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->k(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;IID)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
