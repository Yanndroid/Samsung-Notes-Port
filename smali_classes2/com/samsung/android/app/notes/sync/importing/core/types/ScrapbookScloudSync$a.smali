.class public Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->downloadContentFiles(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ld1/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$a;->a:Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld1/d;Ld1/d;)I
    .locals 1

    invoke-virtual {p1}, Ld1/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ld1/d;->a()Ljava/lang/String;

    move-result-object p2

    const v0, 0xffff

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    invoke-static {p1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ld1/d;

    check-cast p2, Ld1/d;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$a;->a(Ld1/d;Ld1/d;)I

    move-result p1

    return p1
.end method
