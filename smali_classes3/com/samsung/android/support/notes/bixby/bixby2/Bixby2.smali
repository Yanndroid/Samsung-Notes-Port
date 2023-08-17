.class public Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Bixby2"


# instance fields
.field private mDrawerFragment:Lcom/samsung/android/support/notes/bixby/bixby2/contract/IDrawerFragmentBixby2;

.field private mNoteFragment:Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteFragmentBixby2;

.field private mNoteListActivity:Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteListActivityBixby2;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mNoteListActivity:Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteListActivityBixby2;

    iput-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mNoteFragment:Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteFragmentBixby2;

    iput-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mDrawerFragment:Lcom/samsung/android/support/notes/bixby/bixby2/contract/IDrawerFragmentBixby2;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mNoteListActivity:Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteListActivityBixby2;

    iput-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mNoteFragment:Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteFragmentBixby2;

    iput-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mDrawerFragment:Lcom/samsung/android/support/notes/bixby/bixby2/contract/IDrawerFragmentBixby2;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->registerBixbyExecutor(Landroid/app/Application;)V

    return-void
.end method

.method private handleAppLinkNoteFragment(Landroid/content/Intent;)I
    .locals 11

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mNoteFragment:Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteFragmentBixby2;

    const/4 v2, 0x0

    const-string v3, "Bixby2"

    if-eqz v1, :cond_e

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v4, "applink"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAppLinkNoteFragment - actionName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    const-string v4, "NewNote"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "AddContent"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "AddContentToEditingNote"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v4, "noteId"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "SearchNote"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "ShowAllNotes"

    if-nez v7, :cond_4

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    if-nez v4, :cond_3

    const-string p1, "noteId is null"

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    const-string v5, "\\,"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->getInstance()Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->isValidUUIDs([Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string p1, "noteIds is not valid"

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v7, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x1

    sparse-switch v9, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    :cond_5
    const/4 v7, 0x3

    goto :goto_0

    :sswitch_1
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_0

    :cond_6
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_2
    const-string v6, "ShareNote"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_0

    :cond_7
    move v7, v10

    goto :goto_0

    :sswitch_3
    const-string v6, "DeleteNote"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_0

    :cond_8
    move v7, v2

    :goto_0
    const-string v6, "noteId list is null"

    packed-switch v7, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unexpected actionName: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->setLaunchOverTargetTask(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mNoteFragment:Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteFragmentBixby2;

    invoke-interface {p1}, Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteFragmentBixby2;->search()Z

    move-result p1

    if-eqz p1, :cond_c

    :goto_1
    move v2, v10

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->setLaunchOverTargetTask(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mNoteFragment:Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteFragmentBixby2;

    invoke-interface {p1}, Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteFragmentBixby2;->showAllNotes()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mDrawerFragment:Lcom/samsung/android/support/notes/bixby/bixby2/contract/IDrawerFragmentBixby2;

    if-nez p1, :cond_9

    const-string p1, "mDrawerFragment is null"

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    invoke-interface {p1}, Lcom/samsung/android/support/notes/bixby/bixby2/contract/IDrawerFragmentBixby2;->closeDrawer()V

    goto :goto_1

    :pswitch_2
    if-nez v5, :cond_a

    invoke-static {v3, v6}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_a
    array-length v1, v5

    if-le v1, v10, :cond_c

    const-string/jumbo v1, "shareType"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noteId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " shareType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->setLaunchOverTargetTask(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mNoteFragment:Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteFragmentBixby2;

    invoke-interface {p1, v5, v0}, Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteFragmentBixby2;->shareNotes([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_2

    :pswitch_3
    if-nez v5, :cond_b

    invoke-static {v3, v6}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_b
    invoke-direct {p0, p1}, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->setLaunchOverTargetTask(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mNoteFragment:Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteFragmentBixby2;

    invoke-interface {p1, v5}, Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteFragmentBixby2;->deleteNotes([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_1

    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mNoteFragment:Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteFragmentBixby2;

    invoke-interface {p1}, Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteFragmentBixby2;->setAction()V

    :cond_d
    :goto_3
    return v2

    :cond_e
    :goto_4
    const-string p1, "handleAppLinkNoteFragment - return None"

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x200347a3 -> :sswitch_3
        0x19238c51 -> :sswitch_2
        0x414107dd -> :sswitch_1
        0x4c7651da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleAppLinkNoteListActivity(Landroid/content/Intent;)I
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mNoteListActivity:Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteListActivityBixby2;

    const/4 v3, 0x0

    const-string v4, "Bixby2"

    if-eqz v2, :cond_c

    if-eqz v1, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v5, "applink"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAppLinkNoteListActivity - actionName : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    const-string v2, "imageUri"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "noteTitle"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v2, "text"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "NewNote"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v13, 0x3e9

    if-nez v2, :cond_a

    const-string v2, "AddContentToEditingNote"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "SelectAndAddContent"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string v2, "noteId"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v5, -0x1

    if-eqz v2, :cond_3

    const-string v1, "handleAppLinkNoteListActivity# noteId is empty."

    :goto_0
    invoke-static {v4, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_3
    const-string v2, "\\,"

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->getInstance()Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->isValidUUIDs([Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v1, "handleAppLinkNoteListActivity# noteIds is not valid"

    goto :goto_0

    :cond_4
    const-string/jumbo v7, "shareType"

    invoke-virtual {v1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleAppLinkNoteListActivity# noteId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " shareType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const-string v8, "EditNote"

    const/4 v14, 0x1

    const-string v15, "ShareNote"

    const-string v3, "SelectNote"

    sparse-switch v7, :sswitch_data_0

    :goto_1
    move v7, v5

    goto :goto_2

    :sswitch_0
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    const/4 v7, 0x3

    goto :goto_2

    :sswitch_1
    const-string v7, "AddContent"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_1

    :cond_6
    const/4 v7, 0x2

    goto :goto_2

    :sswitch_2
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_1

    :cond_7
    move v7, v14

    goto :goto_2

    :sswitch_3
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_1

    :cond_8
    const/4 v7, 0x0

    :goto_2
    packed-switch v7, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAppLinkNoteListActivity# unexpected actionName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->setLaunchOverTargetTask(Landroid/content/Intent;)V

    iget-object v2, v0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mNoteListActivity:Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteListActivityBixby2;

    invoke-interface {v2, v8, v9, v1}, Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteListActivityBixby2;->openComposer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    return v13

    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->setLaunchOverTargetTask(Landroid/content/Intent;)V

    iget-object v7, v0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mNoteListActivity:Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteListActivityBixby2;

    const-string v8, "AddContent"

    invoke-interface/range {v7 .. v12}, Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteListActivityBixby2;->addContentToComposer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    return v13

    :pswitch_2
    array-length v2, v2

    if-ne v2, v14, :cond_9

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->setLaunchOverTargetTask(Landroid/content/Intent;)V

    iget-object v2, v0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mNoteListActivity:Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteListActivityBixby2;

    invoke-interface {v2, v15, v9, v1}, Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteListActivityBixby2;->openComposer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    return v13

    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->setLaunchOverTargetTask(Landroid/content/Intent;)V

    iget-object v2, v0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mNoteListActivity:Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteListActivityBixby2;

    invoke-interface {v2, v3, v9, v1}, Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteListActivityBixby2;->openComposer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    return v13

    :cond_9
    :goto_3
    return v5

    :cond_a
    :goto_4
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->setLaunchOverTargetTask(Landroid/content/Intent;)V

    iget-object v5, v0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mNoteListActivity:Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteListActivityBixby2;

    const/4 v7, 0x0

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    invoke-interface/range {v5 .. v10}, Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteListActivityBixby2;->addContentToComposer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    return v13

    :cond_b
    const/4 v1, 0x0

    return v1

    :cond_c
    :goto_5
    move v1, v3

    const-string v2, "handleAppLinkNoteListActivity - return None"

    invoke-static {v4, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x141b572e -> :sswitch_3
        0x19238c51 -> :sswitch_2
        0x214668b8 -> :sswitch_1
        0x6354e13c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerBixbyExecutor(Landroid/app/Application;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyExecutor;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyExecutor;-><init>(Landroid/app/Application;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyExecutor;->addActionHandler()V

    return-void
.end method

.method private setLaunchOverTargetTask(Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Bixby2"

    if-nez v0, :cond_0

    const-string/jumbo p1, "setLaunchOverTargetTask - bundle is null"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "bixbyClient_taskId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string v2, " bixbyClient_taskId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLaunchOverTargetTask - Bixby Client taskId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-class v2, Landroid/content/Intent;

    const-string v3, "semSetLaunchOverTargetTask"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v0, v3, v8

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLaunchOverTargetTask, exception : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public bixbyAction(Lcom/samsung/android/support/notes/bixby/bixby2/contract/IBixby2ActionBackgound;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->getInstance()Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;

    invoke-static {p1}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->setBixbyCallBack(Lcom/samsung/android/support/notes/bixby/bixby2/contract/IBixby2ActionBackgound;)V

    :cond_0
    return-void
.end method

.method public getBixbyAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mNoteListActivity:Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteListActivityBixby2;

    invoke-interface {v0}, Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteListActivityBixby2;->getBixbyAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShareType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mNoteListActivity:Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteListActivityBixby2;

    invoke-interface {v0}, Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteListActivityBixby2;->getShareType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleAppLink(ILandroid/content/Intent;)I
    .locals 1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->handleAppLinkNoteFragment(Landroid/content/Intent;)I

    move-result p1

    return p1

    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->handleAppLinkNoteListActivity(Landroid/content/Intent;)I

    move-result p1

    return p1
.end method

.method public registerDrawerFragment(Lcom/samsung/android/support/notes/bixby/bixby2/contract/IDrawerFragmentBixby2;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "Bixby2"

    const-string v1, "registerDrawerFragment"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mDrawerFragment:Lcom/samsung/android/support/notes/bixby/bixby2/contract/IDrawerFragmentBixby2;

    :cond_0
    return-void
.end method

.method public registerNoteFragment(Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteFragmentBixby2;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "Bixby2"

    const-string v1, "registerNoteFragment"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mNoteFragment:Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteFragmentBixby2;

    :cond_0
    return-void
.end method

.method public registerNoteListActivity(Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteListActivityBixby2;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "Bixby2"

    const-string v1, "registerNoteListActivity"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mNoteListActivity:Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteListActivityBixby2;

    :cond_0
    return-void
.end method

.method public releaseDrawerFragment()V
    .locals 2

    const-string v0, "Bixby2"

    const-string v1, "releaseDrawerFragment"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mDrawerFragment:Lcom/samsung/android/support/notes/bixby/bixby2/contract/IDrawerFragmentBixby2;

    return-void
.end method

.method public releaseNoteFragment()V
    .locals 2

    const-string v0, "Bixby2"

    const-string v1, "releaseNoteFragment"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mNoteFragment:Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteFragmentBixby2;

    return-void
.end method

.method public releaseNoteListActivity()V
    .locals 2

    const-string v0, "Bixby2"

    const-string v1, "releaseNoteListActivity"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/Bixby2;->mNoteListActivity:Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteListActivityBixby2;

    return-void
.end method
