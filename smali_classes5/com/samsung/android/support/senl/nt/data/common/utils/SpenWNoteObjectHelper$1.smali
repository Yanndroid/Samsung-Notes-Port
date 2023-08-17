.class Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;->getSortedObjectList(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)I
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    check-cast p2, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper$1;->compare(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)I

    move-result p1

    return p1
.end method
