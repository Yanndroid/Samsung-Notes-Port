.class Lcom/samsung/android/app/notes/MemoApplication$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$IBixby2Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/MemoApplication;->initBixby(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/MemoApplication;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/MemoApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/MemoApplication$8;->this$0:Lcom/samsung/android/app/notes/MemoApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerBixby2Action()Lcom/samsung/android/support/notes/bixby/bixby2/contract/IBixby2ActionBackgound;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$Bixby2ActionBackgound;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$Bixby2ActionBackgound;-><init>()V

    return-object v0
.end method
