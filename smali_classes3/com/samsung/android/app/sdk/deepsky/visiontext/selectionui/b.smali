.class public final synthetic Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/b;->a:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/b;->a:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;

    check-cast p1, Landroid/view/textclassifier/TextClassification;

    invoke-static {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->c(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;Landroid/view/textclassifier/TextClassification;)V

    return-void
.end method
