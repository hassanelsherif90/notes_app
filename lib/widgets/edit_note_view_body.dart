import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/edit_notes_color_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 60),
          CustomAppBar(
            onPressed: () {
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.subTitle = subTitle ?? widget.noteModel.subTitle;
              BlocProvider.of<NotesCubit>(context).fetchAll();
              widget.noteModel.save();

              Navigator.pop(context);
            },
            title: 'Edit',
            icon: Icons.check,
          ),
          const SizedBox(height: 50),
          CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hint: widget.noteModel.title),
          const SizedBox(height: 15),
          CustomTextField(
            onChanged: (value) {
              subTitle = value;
            },
            hint: widget.noteModel.subTitle,
            maxLines: 5,
          ),
          const SizedBox(height: 15),
          EditNotesColorList(note: widget.noteModel),
        ],
      ),
    );
  }
}
