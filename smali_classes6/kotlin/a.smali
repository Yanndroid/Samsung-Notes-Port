.class public final synthetic Lkotlin/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(II)I
    .locals 1

    const/high16 v0, -0x80000000

    xor-int/2addr p0, v0

    xor-int/2addr p1, v0

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
