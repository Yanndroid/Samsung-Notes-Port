.class final Lcom/google/api/client/repackaged/com/google/common/base/Splitter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/repackaged/com/google/common/base/Splitter$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/repackaged/com/google/common/base/Splitter;->fixedLength(I)Lcom/google/api/client/repackaged/com/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$length:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$4;->val$length:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator(Lcom/google/api/client/repackaged/com/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;
    .locals 1

    new-instance v0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$4$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$4$1;-><init>(Lcom/google/api/client/repackaged/com/google/common/base/Splitter$4;Lcom/google/api/client/repackaged/com/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public bridge synthetic iterator(Lcom/google/api/client/repackaged/com/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$4;->iterator(Lcom/google/api/client/repackaged/com/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;

    move-result-object p1

    return-object p1
.end method
