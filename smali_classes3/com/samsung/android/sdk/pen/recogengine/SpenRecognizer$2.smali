.class Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$SpenRecognizerResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->request(Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

.field public final synthetic val$listener:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$ResultListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$ResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$2;->this$0:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$2;->val$listener:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$2;->val$listener:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$ResultListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$ResultListener;->onResult(ILcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;)V

    return-void
.end method
