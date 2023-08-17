.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4;
.super Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder<",
        "Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper$IPresenter;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$4;->build()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;

    move-result-object v0

    return-object v0
.end method
