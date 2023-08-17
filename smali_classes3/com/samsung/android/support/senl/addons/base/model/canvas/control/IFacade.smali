.class public interface abstract Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel;
.implements Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasFlags;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008f\u0018\u0000 +2\u00020\u00012\u00020\u0002:\u0001+J\u0008\u0010\u0003\u001a\u00020\u0004H&J\u0008\u0010\u0005\u001a\u00020\u0004H&J\u0008\u0010\u0006\u001a\u00020\u0004H&J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0008H&J\n\u0010\t\u001a\u0004\u0018\u00010\nH&J\u000e\u0010\u000b\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000cH&J\u000f\u0010\r\u001a\u0004\u0018\u00010\u000eH&\u00a2\u0006\u0002\u0010\u000fJ\u000e\u0010\u0010\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0011H&J\u000e\u0010\u0012\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0013H&J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0015H&J\u0008\u0010\u0016\u001a\u00020\u0017H&J\u0008\u0010\u0018\u001a\u00020\u0017H&J\u0008\u0010\u0019\u001a\u00020\u0017H&J\u0008\u0010\u001a\u001a\u00020\u0004H&J\u0008\u0010\u001b\u001a\u00020\u0004H&J\u0008\u0010\u001c\u001a\u00020\u0004H&J\u0012\u0010\u001d\u001a\u00020\u00042\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0008H&J\u0016\u0010\u001f\u001a\u00020\u00042\u000c\u0010 \u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000cH&J\u0012\u0010!\u001a\u00020\u00042\u0008\u0010\"\u001a\u0004\u0018\u00010#H&J\u0016\u0010$\u001a\u00020\u00042\u000c\u0010%\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0011H&J\u0016\u0010&\u001a\u00020\u00042\u000c\u0010\'\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0013H&J\u0008\u0010(\u001a\u00020\u0004H&J\u0008\u0010)\u001a\u00020\u0004H&J\u0008\u0010*\u001a\u00020\u0004H&\u00a8\u0006,"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasFlags;",
        "clearAll",
        "",
        "clearViews",
        "commitStroke",
        "getCanvasContainer",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer;",
        "getCurrentColor",
        "Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;",
        "getDocModel",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;",
        "getObjectCount",
        "",
        "()Ljava/lang/Integer;",
        "getSettingView",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;",
        "getView",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;",
        "getViewPositionInWindow",
        "",
        "isEmpty",
        "",
        "isRedoable",
        "isUndoable",
        "lockForSave",
        "redo",
        "redoAll",
        "setCanvasContainer",
        "layout",
        "setDoc",
        "doc",
        "setPreTouchListener",
        "listner",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;",
        "setSettingView",
        "settingView",
        "setView",
        "view",
        "undo",
        "undoAll",
        "unlockForSave",
        "Companion",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OBSV_PROPERTY_ALL_OBJECT_REMOVED:I = 0x2b00

.field public static final OBSV_PROPERTY_DOCUMENT_CREATED:I = 0x2c88

.field public static final OBSV_PROPERTY_ERASER_ENABLED:I = 0x2cec

.field public static final OBSV_PROPERTY_NONE:I = 0x2af8

.field public static final OBSV_PROPERTY_OBJECT_ADDED:I = 0x2afe

.field public static final OBSV_PROPERTY_OBJECT_CHANGED:I = 0x2af9

.field public static final OBSV_PROPERTY_OBJECT_CHANGED_REDO:I = 0x2afb

.field public static final OBSV_PROPERTY_OBJECT_CHANGED_UNDO:I = 0x2afa

.field public static final OBSV_PROPERTY_OBJECT_NOT_REDOABLE:I = 0x2afd

.field public static final OBSV_PROPERTY_OBJECT_NOT_UNDOABLE:I = 0x2afc

.field public static final OBSV_PROPERTY_OBJECT_REMOVED:I = 0x2aff

.field public static final OBSV_PROPERTY_OBJECT_SELECTED:I = 0x2b02

.field public static final OBSV_PROPERTY_PAINTING_DOC_CREATED:I = 0x2c89

.field public static final OBSV_PROPERTY_PEN_COLOR_CHANGED:I = 0x2c27

.field public static final OBSV_PROPERTY_START_OBJECT_ADDED:I = 0x2b01

.field public static final OBSV_PROPERTY_TOOL_CHANGED_ERASER:I = 0x2c25

.field public static final OBSV_PROPERTY_TOOL_CHANGED_PEN:I = 0x2c24

.field public static final OBSV_PROPERTY_TOOL_CHANGED_SELECTOR:I = 0x2c26

.field public static final OBSV_PROPERTY_VIEW_ACTION_UP:I = 0x2b5f

.field public static final OBSV_PROPERTY_VIEW_INFLATED:I = 0x2bc0

.field public static final OBSV_PROPERTY_VIEW_LAYOUT_CHANGED:I = 0x2bc1

.field public static final OBSV_PROPERTY_VIEW_PRE_ACTION_DOWN:I = 0x2b5e

.field public static final OBSV_PROPERTY_VIEW_SET_DOCUMENT:I = 0x2bc2

.field public static final OBSV_PROPERTY_VIEW_SET_ZOOM_INIT:I = 0x2b5d

.field public static final OBSV_PROPERTY_VIEW_ZOOM_CHANGED:I = 0x2b5c


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;->Companion:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade$Companion;

    return-void
.end method


# virtual methods
.method public abstract clearAll()V
.end method

.method public abstract clearViews()V
.end method

.method public abstract commitStroke()V
.end method

.method public abstract getCanvasContainer()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getCurrentColor()Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getDocModel()Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getObjectCount()Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getSettingView()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getView()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getViewPositionInWindow()[I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract isRedoable()Z
.end method

.method public abstract isUndoable()Z
.end method

.method public abstract lockForSave()V
.end method

.method public abstract redo()V
.end method

.method public abstract redoAll()V
.end method

.method public abstract setCanvasContainer(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer;)V
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setDoc(Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;)V
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/addons/base/model/canvas/document/IDocModel<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract setPreTouchListener(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;)V
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setSettingView(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;)V
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingView<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract setView(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;)V
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract undo()V
.end method

.method public abstract undoAll()V
.end method

.method public abstract unlockForSave()V
.end method
