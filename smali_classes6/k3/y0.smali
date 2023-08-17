.class public final synthetic Lk3/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:B

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/y0;->a:Ljava/lang/String;

    iput-byte p2, p0, Lk3/y0;->b:B

    iput p3, p0, Lk3/y0;->c:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lk3/y0;->a:Ljava/lang/String;

    iget-byte v1, p0, Lk3/y0;->b:B

    iget v2, p0, Lk3/y0;->c:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$4;->a(Ljava/lang/String;BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
