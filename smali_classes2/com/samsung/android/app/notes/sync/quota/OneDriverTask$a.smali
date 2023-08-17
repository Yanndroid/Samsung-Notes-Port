.class public Lcom/samsung/android/app/notes/sync/quota/OneDriverTask$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/network/networkutils/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/quota/OneDriverTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/quota/OneDriverTask;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/quota/OneDriverTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/quota/OneDriverTask$a;->a:Lcom/samsung/android/app/notes/sync/quota/OneDriverTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(ILjava/lang/String;)V
    .locals 1

    const-string p1, "QT/OneDriverTask"

    const-string v0, "handleResponse()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/quota/OneDriverTask$a;->a:Lcom/samsung/android/app/notes/sync/quota/OneDriverTask;

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/sync/quota/OneDriverTask;->c(Lcom/samsung/android/app/notes/sync/quota/OneDriverTask;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/quota/OneDriverTask$a;->a:Lcom/samsung/android/app/notes/sync/quota/OneDriverTask;

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/sync/quota/OneDriverTask;->a(Lcom/samsung/android/app/notes/sync/quota/OneDriverTask;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/quota/OneDriverTask$a;->a:Lcom/samsung/android/app/notes/sync/quota/OneDriverTask;

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/sync/quota/OneDriverTask;->b(Lcom/samsung/android/app/notes/sync/quota/OneDriverTask;Ljava/lang/String;)V

    return-void
.end method
