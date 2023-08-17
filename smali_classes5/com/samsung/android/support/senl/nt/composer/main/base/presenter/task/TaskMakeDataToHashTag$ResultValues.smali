.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$ResultValues;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultValues"
.end annotation


# instance fields
.field private mStringBufferTextRecognition:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$ResultValues;->mStringBufferTextRecognition:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public getStringBufferTextRecognition()Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$ResultValues;->mStringBufferTextRecognition:Ljava/lang/StringBuffer;

    return-object v0
.end method
