.class public final synthetic Lk3/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lk3/t0;->a:I

    iput-object p2, p0, Lk3/t0;->b:Ljava/lang/String;

    iput-object p3, p0, Lk3/t0;->c:Ljava/lang/String;

    iput p4, p0, Lk3/t0;->d:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lk3/t0;->a:I

    iget-object v1, p0, Lk3/t0;->b:Ljava/lang/String;

    iget-object v2, p0, Lk3/t0;->c:Ljava/lang/String;

    iget v3, p0, Lk3/t0;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->f(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
