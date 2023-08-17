.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor;->findSelectedObjectSpanFromTextSelection(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;[I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;)I
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getTextIndex()I

    move-result p1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getTextIndex()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;

    check-cast p2, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAnchor$2;->compare(Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;)I

    move-result p1

    return p1
.end method
