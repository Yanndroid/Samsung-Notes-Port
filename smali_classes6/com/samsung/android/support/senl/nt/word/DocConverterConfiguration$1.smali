.class Lcom/samsung/android/support/senl/nt/word/DocConverterConfiguration$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/word/DocConverterConfiguration;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/word/common/DocConverter;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/word/common/DocConverter;-><init>()V

    new-instance v1, Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointController;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointController;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/word/common/DocConverter;->setPowerPointController(Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointController;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/word/word/WordController;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/word/word/WordController;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/word/common/DocConverter;->setWordController(Lcom/samsung/android/support/senl/nt/word/word/WordController;)V

    return-object v0
.end method
