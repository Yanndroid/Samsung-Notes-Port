.class public final synthetic Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/d;->a:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationHelper;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/d;->a:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextClassificationHelper;->classifyText()Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    return-object v0
.end method
