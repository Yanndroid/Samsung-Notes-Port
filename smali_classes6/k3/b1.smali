.class public final synthetic Lk3/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:[B


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/b1;->a:Ljava/lang/String;

    iput-object p2, p0, Lk3/b1;->b:[B

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lk3/b1;->a:Ljava/lang/String;

    iget-object v1, p0, Lk3/b1;->b:[B

    invoke-static {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$5;->c(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
