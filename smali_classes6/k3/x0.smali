.class public final synthetic Lk3/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:B

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lk3/x0;->a:B

    iput p2, p0, Lk3/x0;->b:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-byte v0, p0, Lk3/x0;->a:B

    iget v1, p0, Lk3/x0;->b:I

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$4;->b(BILjava/lang/String;Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;)Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    move-result-object p1

    return-object p1
.end method
